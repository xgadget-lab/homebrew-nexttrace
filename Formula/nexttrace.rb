class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.3.6"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.3.6.tar.gz"
    sha256 "b57d9cfe3d7657b50c51c622d7f0acbc65558240c70158988503d66cca204aae"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.3.6' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
