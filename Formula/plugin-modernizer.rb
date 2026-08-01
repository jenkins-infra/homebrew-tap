class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3138.vfee69b_eb_73a_7".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3138.vfee69b_eb_73a_7/jenkins-plugin-modernizer-3138.vfee69b_eb_73a_7.jar"
    sha256 "97578c557ce4e943772260fb2efa78fd0b3b13329b4b63176dd58ce956d2dc17"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3138.vfee69b_eb_73a_7.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3138.vfee69b_eb_73a_7.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
