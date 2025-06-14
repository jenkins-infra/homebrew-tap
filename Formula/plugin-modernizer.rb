class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1899.v2ef6a_6d4c27b_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1899.v2ef6a_6d4c27b_/jenkins-plugin-modernizer-1899.v2ef6a_6d4c27b_.jar"
    sha256 "a99b5882dfa782ffe480c4873af8bbef6dd78230d82434884cd14d33d10d3571"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1899.v2ef6a_6d4c27b_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1899.v2ef6a_6d4c27b_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
