class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1298.v9879b_455e91b_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1298.v9879b_455e91b_/jenkins-plugin-modernizer-1298.v9879b_455e91b_.jar"
    sha256 "9be758e97f8f2b459a51a0ff31d0f1a3f49e362369b9d62d7b3769916cdeaa89"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1298.v9879b_455e91b_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1298.v9879b_455e91b_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
