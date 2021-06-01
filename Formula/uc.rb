# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uc < Formula
  desc "Utility to update jenkins plugin.txt"
  homepage ""
  version "0.1.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jenkins-infra/uc/releases/download/0.1.2/uc-darwin-amd64.tar.gz"
      sha256 "725fe826d82b9ffa62de580ee4cb8822cf8f5a7d1030e6a937c544a9c9956aab"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jenkins-infra/uc/releases/download/0.1.2/uc-darwin-arm64.tar.gz"
      sha256 "7ea2c251c865c0abd76b869b9e20dc7a3c6449c262c6f5a28bcb0b3b8849cbbc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jenkins-infra/uc/releases/download/0.1.2/uc-linux-amd64.tar.gz"
      sha256 "cb9ec0c86b3c2cf87b121350b40a2b64650cc68dec9754e3eb7c537d3e8a6f69"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jenkins-infra/uc/releases/download/0.1.2/uc-linux-arm64.tar.gz"
      sha256 "58eef7fc0cb646488aeddccaad65947ee1d217101b2ae3d969ab4e9d06d1673e"
    end
  end

  def install
    bin.install "uc"
  end
end
