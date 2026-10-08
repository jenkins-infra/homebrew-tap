class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "3219.v9c7a_11fc0558".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/3219.v9c7a_11fc0558/jenkins-plugin-modernizer-3219.v9c7a_11fc0558.jar"
    sha256 "11302b87a4c59b3d4093c7c025330797428ff0e26ba0ffe17d419cb6dfc6896a"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-3219.v9c7a_11fc0558.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-3219.v9c7a_11fc0558.jar", "plugin-modernizer", "--add-opens=java.base/java.lang=ALL-UNNAMED --sun-misc-unsafe-memory-access=allow"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
