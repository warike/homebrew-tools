# typed: false
# frozen_string_literal: true

require "download_strategy"
require "utils/github"

# Downloads a release asset of a private GitHub repository through the GitHub API, with the
# token in HOMEBREW_GITHUB_API_TOKEN. The formula names the asset by its public release URL:
#   url "https://github.com/OWNER/REPO/releases/download/TAG/FILE", using: GitHubPrivateReleaseDownloadStrategy
class GitHubPrivateReleaseDownloadStrategy < CurlDownloadStrategy
  def initialize(url, name, version, **meta)
    super
    match = url.match(%r{\Ahttps://github\.com/([^/]+)/([^/]+)/releases/download/([^/]+)/([^/]+)\z})
    raise CurlDownloadStrategyError, "#{url} is not a GitHub release asset URL" unless match

    @owner, @repo, @tag, @filename = match.captures
  end

  private

  def _fetch(url:, resolved_url:, timeout:)
    token = Homebrew::EnvConfig.github_api_token
    if token.blank?
      raise CurlDownloadStrategyError,
            "Set HOMEBREW_GITHUB_API_TOKEN to a token that can read #{@owner}/#{@repo}"
    end

    release = GitHub::API.open_rest("https://api.github.com/repos/#{@owner}/#{@repo}/releases/tags/#{@tag}")
    asset = release["assets"].find { |a| a["name"] == @filename }
    raise CurlDownloadStrategyError, "#{@filename} is not in release #{@tag}" unless asset

    curl_download asset["url"],
                  "--header", "Accept: application/octet-stream",
                  "--header", "Authorization: Bearer #{token}",
                  to: temporary_path, timeout:
  end
end
