class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2957.v33d7ec142433".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2957.v33d7ec142433/jenkins-plugin-modernizer-2957.v33d7ec142433.jar"
    sha256 "136f08e85979bbe18856179f6111bf86a9fc37954536b298cc9476284ce5f5a3"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2957.v33d7ec142433.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2957.v33d7ec142433.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
