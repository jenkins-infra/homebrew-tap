class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3059.v13f405239a_46".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3059.v13f405239a_46/jenkins-plugin-modernizer-3059.v13f405239a_46.jar"
    sha256 "297453a1a474b8d4cb96cff4d7f1f8efc9f0c32f331852d104f5b7464f55e978"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3059.v13f405239a_46.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3059.v13f405239a_46.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
