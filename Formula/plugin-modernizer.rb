class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2286.vd45c2550b_53e".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2286.vd45c2550b_53e/jenkins-plugin-modernizer-2286.vd45c2550b_53e.jar"
    sha256 "29e0ece2876b2660d9df2fdf1b7e0909784f1b03bf618d146721eb30cd8325a1"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2286.vd45c2550b_53e.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2286.vd45c2550b_53e.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
