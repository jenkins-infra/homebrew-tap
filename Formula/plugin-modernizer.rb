class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3202.v43b_478c85695".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3202.v43b_478c85695/jenkins-plugin-modernizer-3202.v43b_478c85695.jar"
    sha256 "05b66668b2a9d65b6eacbee5f3cc9c5ea0ab157c284bc72fca93144052bf2e57"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3202.v43b_478c85695.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3202.v43b_478c85695.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
