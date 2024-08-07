# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jv < Formula
  desc "Determine a Jenkins Version"
  homepage "https://github.com/jenkins-infra/jenkins-version"
  version "0.6.5"

  on_macos do
    on_intel do
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.5/jenkins-version-darwin-amd64.tar.gz"
      sha256 "e41b2ec1c2fcedd717e261c01836a0445dd3c7b9c6b82265ad97ff0c265588da"

      def install
        bin.install "jv"
      end
    end
    on_arm do
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.5/jenkins-version-darwin-arm64.tar.gz"
      sha256 "14f0bb1a9df11d4ee5b1410969cae94d5e5b69c534df08b51b434435e30b0bda"

      def install
        bin.install "jv"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.5/jenkins-version-linux-amd64.tar.gz"
        sha256 "86810ae860c9971629cb0c1a6fdbc8cf87af50fa0d2222288fa01d9e52b3aedf"

        def install
          bin.install "jv"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.6.5/jenkins-version-linux-arm64.tar.gz"
        sha256 "8b96d0725567c3eddc63f27ad08ee535bf972b39b836e365f86364aa11570265"

        def install
          bin.install "jv"
        end
      end
    end
  end
end
