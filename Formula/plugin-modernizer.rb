class PluginModernizer < Formula
    desc "Plugin Modernizer"
    # Note: Brew don't really like our versions scheme for CD. Implicitly it consider 499.vb_86f97f0b_197 as version 197 which is incorrect
    # So using version which  only first numeric part for CD
    version "1334.vb_033a_a_8d44d4".split(".")[0]
    homepage "https://github.com/jenkins-infra/plugin-modernizer-tool"
    url "https://github.com/jenkins-infra/plugin-modernizer-tool/releases/download/1334.vb_033a_a_8d44d4/jenkins-plugin-modernizer-1334.vb_033a_a_8d44d4.jar"
    sha256 "c58fc84cf8a72127407a8d9fa0ba27e011051f2fc4681ba9d48e425638f2ea51"
    license "MIT"

    def install
      libexec.install "jenkins-plugin-modernizer-1334.vb_033a_a_8d44d4.jar"
      bin.write_jar_script libexec/"jenkins-plugin-modernizer-1334.vb_033a_a_8d44d4.jar", "plugin-modernizer"
    end

    test do
      system bin/"plugin-modernizer", "--version"
    end
  end
