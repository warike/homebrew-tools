# typed: false
# frozen_string_literal: true

class Tfinit < Formula
  desc "A CLI to scaffold and manage Terraform projects"
  homepage "https://github.com/warike/terraform-files"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/warike/terraform-files/releases/download/v1.0.0/tfinit_1.0.0_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    if Hardware::CPU.arm?
      url "https://github.com/warike/terraform-files/releases/download/v1.0.0/tfinit_1.0.0_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "tfinit"
  end

  test do
    system "#{bin}/tfinit --help"
  end
end
