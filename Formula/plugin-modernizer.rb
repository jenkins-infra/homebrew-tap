class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1170.v583361308d02".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1170.v583361308d02/jenkins-plugin-modernizer-1170.v583361308d02.jar"
    sha256 "4949091e55539521d2546c874408233e194b845c6afb808890aac812cd33b6fe"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1170.v583361308d02.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1170.v583361308d02.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
