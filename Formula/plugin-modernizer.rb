class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3162.v49728101e2da_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3162.v49728101e2da_/jenkins-plugin-modernizer-3162.v49728101e2da_.jar"
    sha256 "6f6a52b23001590cf9ffc7e29bebf0f5538355d1fa6662268025a42a0ecde58c"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3162.v49728101e2da_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3162.v49728101e2da_.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
