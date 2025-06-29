class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1960.v701868c73642".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1960.v701868c73642/jenkins-plugin-modernizer-1960.v701868c73642.jar"
    sha256 "1e9ba41e61770f37ca6334bcb1ef7dc992cfeadd2970c367b8e5393ebdf12769"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1960.v701868c73642.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1960.v701868c73642.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
