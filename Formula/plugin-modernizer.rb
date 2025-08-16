class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2122.vc2776a_533b_76".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2122.vc2776a_533b_76/jenkins-plugin-modernizer-2122.vc2776a_533b_76.jar"
    sha256 "49475bd963465e686e660dc12e5747774dda244eb9ed2e34f95a5ddb051b0b01"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2122.vc2776a_533b_76.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2122.vc2776a_533b_76.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
