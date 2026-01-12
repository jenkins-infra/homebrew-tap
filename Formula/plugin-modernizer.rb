class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "2620.vda_743ea_f5c62".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/2620.vda_743ea_f5c62/jenkins-plugin-modernizer-2620.vda_743ea_f5c62.jar"
    sha256 "1c5f9c737b81d905f46b4412b22ac458a4b5596bfecbaf9211f8902da6a9b952"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-2620.vda_743ea_f5c62.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-2620.vda_743ea_f5c62.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
