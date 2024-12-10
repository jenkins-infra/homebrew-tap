class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "917.v96594c6ed92a_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/917.v96594c6ed92a_/jenkins-plugin-modernizer-917.v96594c6ed92a_.jar"
    sha256 "7d9eee99c957c0f1c39f57f2b10b8033acb3a863bc0d4de9d7a1220e7870e6ca"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-917.v96594c6ed92a_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-917.v96594c6ed92a_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
