class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1346.vda_7ccd5310b_d".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1346.vda_7ccd5310b_d/jenkins-plugin-modernizer-1346.vda_7ccd5310b_d.jar"
    sha256 "e0003c5a273bb7d139a61e536627a62abd4623a6d500ae94bc7a68175a81122a"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1346.vda_7ccd5310b_d.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1346.vda_7ccd5310b_d.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
