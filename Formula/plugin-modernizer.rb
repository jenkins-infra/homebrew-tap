class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2360.v08fa_21f26720".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2360.v08fa_21f26720/jenkins-plugin-modernizer-2360.v08fa_21f26720.jar"
    sha256 "5c3849247eb58c175c2bb56ac902e60f5d75cdaa32f6c2a3d85959b2e7b9210e"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2360.v08fa_21f26720.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2360.v08fa_21f26720.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
