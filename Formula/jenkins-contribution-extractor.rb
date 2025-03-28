# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JenkinsContributionExtractor < Formula
  desc "Jenkins Contribution data extractor and analyzer."
  homepage "https://github.com/jenkins-infra/jenkins-contribution-extractor"
  version "0.2.19"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jenkins-infra/jenkins-contribution-extractor/releases/download/v0.2.19/jenkins-contribution-extractor_0.2.19_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c34bdb36d1f1286c2a22319432a86aca015ad9d686d13adc139f27c819adfb78"

      def install
        bin.install "jenkins-contribution-extractor"
      end
    end
    on_arm do
      url "https://github.com/jenkins-infra/jenkins-contribution-extractor/releases/download/v0.2.19/jenkins-contribution-extractor_0.2.19_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ce60978b2052990d1524f040b21421cde97e9adec844fbd8b3292454ff7da90a"

      def install
        bin.install "jenkins-contribution-extractor"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-contribution-extractor/releases/download/v0.2.19/jenkins-contribution-extractor_0.2.19_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "7299ea8891501fd0f731409ed84a29b3ab4af8afc71faf6540e1536016457cf7"

        def install
          bin.install "jenkins-contribution-extractor"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-contribution-extractor/releases/download/v0.2.19/jenkins-contribution-extractor_0.2.19_linux_armv6.tar.gz", using: CurlDownloadStrategy
        sha256 "81a163a806188521fd293c60bdfb86e777eee0e5b15470a77281598ce4b2da7c"

        def install
          bin.install "jenkins-contribution-extractor"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-contribution-extractor/releases/download/v0.2.19/jenkins-contribution-extractor_0.2.19_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "4d8337f912febf17d86272e4f3400d79598bfddf468b13faa4ddb6c578588f76"

        def install
          bin.install "jenkins-contribution-extractor"
        end
      end
    end
  end

  test do
    system "#{bin}/jenkins-contribution-extractor version -d"
  end
end
