class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2624.v624a_64172828".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2624.v624a_64172828/jenkins-plugin-modernizer-2624.v624a_64172828.jar"
    sha256 "b1fdf81514d6eee778a6752397f33a6a057eba2e890bab5966e6c260a5319ca5"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2624.v624a_64172828.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2624.v624a_64172828.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
