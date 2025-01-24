class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1331.v10f4a_b_5257a_c".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1331.v10f4a_b_5257a_c/jenkins-plugin-modernizer-1331.v10f4a_b_5257a_c.jar"
    sha256 "cdb88239a99847c8db84bce58ccc184acf85fbff998451d91a656a534732fe39"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1331.v10f4a_b_5257a_c.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1331.v10f4a_b_5257a_c.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
