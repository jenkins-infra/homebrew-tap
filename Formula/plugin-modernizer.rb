class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "929.vc7c034db_971b_".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/929.vc7c034db_971b_/jenkins-plugin-modernizer-929.vc7c034db_971b_.jar"
    sha256 "d8931a8966da815f25af90c8fc9bde45f2b396c28a153d979afd82d5ad2e8d83"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-929.vc7c034db_971b_.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-929.vc7c034db_971b_.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
