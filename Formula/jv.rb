# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jv < Formula
  desc "Determine a Jenkins Version"
  homepage "https://github.com/jenkins-infra/jenkins-version"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.5.3/jenkins-version-darwin-arm64.tar.gz"
      sha256 "441731b60d2e46ce938e302b89588301999591796dcf255d8f9005aa32fe22c9"

      def install
        bin.install "jv"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.5.3/jenkins-version-darwin-amd64.tar.gz"
      sha256 "c3a0823f0932931f77f7f5f2843126ffebce732bd42408d5a7c9dbd38ad6b386"

      def install
        bin.install "jv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.5.3/jenkins-version-linux-arm64.tar.gz"
      sha256 "69c5d184251751a7944ef78d79ea618e82369049d238ecb30b27c3a9aac00d7f"

      def install
        bin.install "jv"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.5.3/jenkins-version-linux-amd64.tar.gz"
      sha256 "5256d5fd25165f3e3ffe40387f8a41050e7036222ba279fdc99c39d914a0dd79"

      def install
        bin.install "jv"
      end
    end
  end
end
