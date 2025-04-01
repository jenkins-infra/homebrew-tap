class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1669.vb_86ff5210ccf".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1669.vb_86ff5210ccf/jenkins-plugin-modernizer-1669.vb_86ff5210ccf.jar"
    sha256 "d11140ca882ccc4dc52aef7edf53d1d649979bcf1ef8adab30edf55ec9a17af4"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1669.vb_86ff5210ccf.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1669.vb_86ff5210ccf.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
