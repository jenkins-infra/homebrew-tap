# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jv < Formula
  desc "Determine a Jenkins Version"
  homepage "https://github.com/jenkins-infra/jenkins-version"
  version "0.6.2"

  on_macos do
    on_intel do
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.2/jenkins-version-darwin-amd64.tar.gz"
      sha256 "c1ddff9c58819a36e51a9d621fcd9dd57bcc86b972aa5a683f972f0d776a910e"

      def install
        bin.install "jv"
      end
    end
    on_arm do
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.2/jenkins-version-darwin-arm64.tar.gz"
      sha256 "b6f252ebb94e34d0438487b956c9ee32942d323f5c5c93254cdc6a770b5a1ae4"

      def install
        bin.install "jv"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.2/jenkins-version-linux-amd64.tar.gz"
        sha256 "e6e7d7c0d8eb35b0736af2b1dd5e54fd59da2f2a445f962c66984cb16b92611b"

        def install
          bin.install "jv"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.2/jenkins-version-linux-arm64.tar.gz"
        sha256 "a69af210aae76e25956c5be5456d7de74478e699ff3f62b7b7283878bd9ab7a5"

        def install
          bin.install "jv"
        end
      end
    end
  end
end
