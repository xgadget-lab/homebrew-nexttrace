class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.9"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.9.tar.gz"
    sha256 "b7ba7ee050da21d0df599d4e0e3eb974c96b811d3f4c6b8e051791ebaead4919"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.2.9' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
