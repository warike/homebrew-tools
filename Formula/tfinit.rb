# typed: false
# frozen_string_literal: true

class Tfinit < Formula
  desc "A CLI to scaffold and manage Terraform projects"
  homepage "https://github.com/warike/terraform-files"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/warike/terraform-files/releases/download/v1.2.0/tfinit_1.2.0_darwin_amd64.tar.gz"
      sha256 "aca827324412b8d8c5b2146f082da0431f105ca717199a60b45ec41323f6748e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/warike/terraform-files/releases/download/v1.2.0/tfinit_1.2.0_darwin_arm64.tar.gz"
      sha256 "441d5616681c6093de6da7600284352fe7ff1e5e82ab4aadc7297ab97b00db8f"
    end
  end

  def install
    bin.install "tfinit"
  end

  test do
    system "#{bin}/tfinit --help"
  end
end
