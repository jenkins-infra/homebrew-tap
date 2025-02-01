class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1425.vde6ccc0f07f9".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1425.vde6ccc0f07f9/jenkins-plugin-modernizer-1425.vde6ccc0f07f9.jar"
    sha256 "21d0804f78fc6f639f27cfdd401449c24196d68128969067cf6f1c4277bcdf4b"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1425.vde6ccc0f07f9.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1425.vde6ccc0f07f9.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
