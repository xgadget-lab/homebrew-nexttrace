class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://github.com/nxtrace/NTrace-V1"
    version "v1.2.4"
    url "https://github.com/nxtrace/NTrace-V1/archive/refs/tags/v1.2.4.tar.gz"
    sha256 "c5ea8ca27145b166b0cf14b8fe141e6f061d4115349797dd8281b5fa3b68b6f1"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/nxtrace/NTrace-core/config.Version=v1.2.4' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
