class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2774.va_07b_8cfc6b_8b_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2774.va_07b_8cfc6b_8b_/jenkins-plugin-modernizer-2774.va_07b_8cfc6b_8b_.jar"
    sha256 "dd8fcfeff5cd95c7426f510f1f67e96f459e71a959cd5d14ba649978a6d225ef"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2774.va_07b_8cfc6b_8b_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2774.va_07b_8cfc6b_8b_.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
