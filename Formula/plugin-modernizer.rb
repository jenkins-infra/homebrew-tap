class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2856.v95236f394881".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2856.v95236f394881/jenkins-plugin-modernizer-2856.v95236f394881.jar"
    sha256 "7329c2a60049f922bc3175e5450c62170e00836c9d13fb33139f4ab6b51ae92f"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2856.v95236f394881.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2856.v95236f394881.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
