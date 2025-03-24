class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1640.v0f9ec819e871".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1640.v0f9ec819e871/jenkins-plugin-modernizer-1640.v0f9ec819e871.jar"
    sha256 "4f65d72b8354b5e4d5ee8c096ec02a147a3b77506ae8a74269e4a8061080c0be"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1640.v0f9ec819e871.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1640.v0f9ec819e871.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
