class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2102.v0265cef6de24".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2102.v0265cef6de24/jenkins-plugin-modernizer-2102.v0265cef6de24.jar"
    sha256 "34fe9c54d0e6c8393fdfa30c2779e90b8c15477ab7a8af605058928bb015bc5b"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2102.v0265cef6de24.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2102.v0265cef6de24.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
