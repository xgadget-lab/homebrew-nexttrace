class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.3.4"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.3.4.tar.gz"
    sha256 "629342b80e9d0ea83f56efa24671b7dbcc8b26f7f2114ce0f23b3122d664b77d"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.3.4' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
