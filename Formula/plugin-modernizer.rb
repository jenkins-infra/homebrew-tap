class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2835.ve00c3e41a_b_d6".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2835.ve00c3e41a_b_d6/jenkins-plugin-modernizer-2835.ve00c3e41a_b_d6.jar"
    sha256 "e868a0e40d11c47a6433f17f41f3a87aae64bee0ce785a755cd1e53ae21c0e8d"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2835.ve00c3e41a_b_d6.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2835.ve00c3e41a_b_d6.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
