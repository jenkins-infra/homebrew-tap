class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1222.vd800e48b_87e5".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1222.vd800e48b_87e5/jenkins-plugin-modernizer-1222.vd800e48b_87e5.jar"
    sha256 "139c32eb8317ba17710281c0ca21f6e08237cba957bec003300bdfed7d3dd906"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1222.vd800e48b_87e5.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1222.vd800e48b_87e5.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
