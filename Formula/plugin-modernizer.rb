class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2008.vb_d3fb_5c06886".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2008.vb_d3fb_5c06886/jenkins-plugin-modernizer-2008.vb_d3fb_5c06886.jar"
    sha256 "0fffb72da8a3b96cb7e5e35da39aa32fa048a79855c559e3dac99863334a574d"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2008.vb_d3fb_5c06886.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2008.vb_d3fb_5c06886.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
