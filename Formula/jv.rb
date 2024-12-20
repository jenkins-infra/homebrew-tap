# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jv < Formula
  desc "Determine a Jenkins Version"
  homepage "https://github.com/jenkins-infra/jenkins-version"
  version "0.6.7"

  on_macos do
    on_intel do
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.7/jenkins-version-darwin-amd64.tar.gz"
      sha256 "4d165c0353509b8a1568d277c8874a5ef0f4ff97c200c7e59089ab1d072a31ae"

      def install
        bin.install "jv"
      end
    end
    on_arm do
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.7/jenkins-version-darwin-arm64.tar.gz"
      sha256 "33ed88440188092700b89e0c047002339faf5d230fa7d4b3d8ae8c65743ce634"

      def install
        bin.install "jv"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.7/jenkins-version-linux-amd64.tar.gz"
        sha256 "ebec2a8a217ad5a960508528f8149120d7097844edf50eda893cd4a694daa8d2"

        def install
          bin.install "jv"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.7/jenkins-version-linux-arm64.tar.gz"
        sha256 "ef4fba093969b376ce72b31dbd0d31d23d1f06d521bcb5bff15adafda5d73fdb"

        def install
          bin.install "jv"
        end
      end
    end
  end
end
