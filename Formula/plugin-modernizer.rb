# Generated with JReleaser 1.27.0 at 2026-11-27T14:33:27.075489016Z

class PluginModernizer < Formula
  desc "Plugin Modernizer Tool"
  homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
  version "3383.v81b_0d8a_b_9450"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3383.v81b_0d8a_b_9450/jenkins-plugin-modernizer-3383.v81b_0d8a_b_9450-linux-aarch_64", :using => :nounzip
    sha256 "1004b0acb0d7bb4be215046a7e368981c27bce865c0cb4671e0c1dfd3c0e46c8"

    def install
      bin.install "jenkins-plugin-modernizer-3383.v81b_0d8a_b_9450-linux-aarch_64" => "plugin-modernizer"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3383.v81b_0d8a_b_9450/jenkins-plugin-modernizer-3383.v81b_0d8a_b_9450-linux-x86_64", :using => :nounzip
    sha256 "09bd0decaea952c2611f87ea2d91e8b566e20a8001aa780e0619df4d12030092"

    def install
      bin.install "jenkins-plugin-modernizer-3383.v81b_0d8a_b_9450-linux-x86_64" => "plugin-modernizer"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3383.v81b_0d8a_b_9450/jenkins-plugin-modernizer-3383.v81b_0d8a_b_9450-osx-aarch_64", :using => :nounzip
    sha256 "849b2fb29602c26c98e1d3186535d6971814f1e0a7ee5238a8f49bff1341d444"

    def install
      bin.install "jenkins-plugin-modernizer-3383.v81b_0d8a_b_9450-osx-aarch_64" => "plugin-modernizer"
    end
  end


  test do
    output = shell_output("#{bin}/plugin-modernizer --version")
    assert_match "3383.v81b_0d8a_b_9450", output
  end
end
