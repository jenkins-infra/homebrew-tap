class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2761.v987082fea_c5d".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2761.v987082fea_c5d/jenkins-plugin-modernizer-2761.v987082fea_c5d.jar"
    sha256 "068f10b92535ab83d99920b525a168cf74b75c80d4a20e0e3ca6c154d967cc9f"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2761.v987082fea_c5d.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2761.v987082fea_c5d.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
