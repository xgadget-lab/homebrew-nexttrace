class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.3.3"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.3.3.tar.gz"
    sha256 "c7d23c35813325efbe8e819b3ee6d639b88a2d093cd83bb963b17d732636de1d"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.3.3' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
