# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jv < Formula
  desc "Determine a Jenkins Version"
  homepage "https://github.com/jenkins-infra/jenkins-version"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.2.1/jenkins-version-darwin-amd64.tar.gz"
      sha256 "0a0cd4c36fa2f6de0ec1bfa8eb5c13923ea72b91b7907a0fe5667fce32c8de0a"

      def install
        bin.install "jv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.2.1/jenkins-version-darwin-arm64.tar.gz"
      sha256 "9e6c6d20b0ad78f6b457a729e5671258e7f1229b0bc653ba78e58227f1e51832"

      def install
        bin.install "jv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.2.1/jenkins-version-linux-arm64.tar.gz"
      sha256 "4e404175a5ab32e11b1ab56cccadad1b5c28153813d05fa3d8f8ca0a0639da1d"

      def install
        bin.install "jv"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.2.1/jenkins-version-linux-amd64.tar.gz"
      sha256 "87db615d69cc0ccaf9339be7350b8a18abcd7763848f5f06160eabc3af7135a3"

      def install
        bin.install "jv"
      end
    end
  end
end
