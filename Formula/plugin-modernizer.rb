class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1951.v4a_327e0333a_8".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1951.v4a_327e0333a_8/jenkins-plugin-modernizer-1951.v4a_327e0333a_8.jar"
    sha256 "75c44b13ee0fab01bb189eab7168cb68a85104ee2ae23dc0cae18021c0ceb885"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1951.v4a_327e0333a_8.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1951.v4a_327e0333a_8.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
