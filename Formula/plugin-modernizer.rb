class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2243.v473fcc052cdf".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2243.v473fcc052cdf/jenkins-plugin-modernizer-2243.v473fcc052cdf.jar"
    sha256 "18b2e56496084c8f91803fa6deded48b3195efc834fa96f57ebd5a040764bcfd"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2243.v473fcc052cdf.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2243.v473fcc052cdf.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
