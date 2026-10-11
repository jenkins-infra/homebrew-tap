class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3226.v48f4d2b_7939d".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3226.v48f4d2b_7939d/jenkins-plugin-modernizer-3226.v48f4d2b_7939d.jar"
    sha256 "e96533294a7f9a9d4c78778a2da42a0ef4df622ed2d72ed878fcecb1cbad7a37"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3226.v48f4d2b_7939d.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3226.v48f4d2b_7939d.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
