# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jv < Formula
  desc "Determine a Jenkins Version"
  homepage "https://github.com/jenkins-infra/jenkins-version"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.7.0/jenkins-version-darwin-amd64.tar.gz"
      sha256 "03830ad095042084692cc555372fe1c8ceed67c02b47ddc321de7a02869c97ca"

      def install
        bin.install "jv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.7.0/jenkins-version-darwin-arm64.tar.gz"
      sha256 "c464af829e8bde50888f21f806237011f2f65d2564480fbf5681e0360a314258"

      def install
        bin.install "jv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.7.0/jenkins-version-linux-amd64.tar.gz"
        sha256 "070ee2679546557268302218a5bd827f841f29dfa60ca9b0724a7868e9d2f233"

        def install
          bin.install "jv"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.7.0/jenkins-version-linux-arm64.tar.gz"
        sha256 "3566c8e0ebb6133ef1418fc0e26cf556a7e967b7a82c20bf8620263181741a9d"

        def install
          bin.install "jv"
        end
      end
    end
  end
end
