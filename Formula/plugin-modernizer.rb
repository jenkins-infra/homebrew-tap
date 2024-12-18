class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "971.vf9884c77171f".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/971.vf9884c77171f/jenkins-plugin-modernizer-971.vf9884c77171f.jar"
    sha256 "af237d3728a0642d600527127afacddaf2e48b42f3d69d55f09274130ca48b5c"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-971.vf9884c77171f.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-971.vf9884c77171f.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
