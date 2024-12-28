class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1046.v7cedb_6c8df3f".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1046.v7cedb_6c8df3f/jenkins-plugin-modernizer-1046.v7cedb_6c8df3f.jar"
    sha256 "66536d398e195f8b12c1b5fe0c0ded1af5f65d48670f8d0e52c21900ca2cdb91"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1046.v7cedb_6c8df3f.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1046.v7cedb_6c8df3f.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
