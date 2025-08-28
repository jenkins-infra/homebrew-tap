class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2183.v7c2db_3b_b_c753".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2183.v7c2db_3b_b_c753/jenkins-plugin-modernizer-2183.v7c2db_3b_b_c753.jar"
    sha256 "46580ec960f6db58fb5b1644a1c59fae28b8d494c3cbe5a038db54cbf5899732"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2183.v7c2db_3b_b_c753.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2183.v7c2db_3b_b_c753.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
