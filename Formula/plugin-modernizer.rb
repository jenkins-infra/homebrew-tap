class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3372.vcf6281658693".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3372.vcf6281658693/jenkins-plugin-modernizer-3372.vcf6281658693.jar"
    sha256 "5479548c32d9232b55b3817982e9b6242ec6a8fed7645313fe14a7222c645581"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3372.vcf6281658693.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3372.vcf6281658693.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
