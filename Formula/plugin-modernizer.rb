class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2669.v71fef5c1fe3a_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2669.v71fef5c1fe3a_/jenkins-plugin-modernizer-2669.v71fef5c1fe3a_.jar"
    sha256 "c9b983cd8cc0654953dd49ce02aa353cdc2d4ded5d5f99c6f71915cd26f46b83"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2669.v71fef5c1fe3a_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2669.v71fef5c1fe3a_.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
