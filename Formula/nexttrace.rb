class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://mtr.moe"
    version "v1.1.7"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.1.7.tar.gz"
    sha256 "58ead840cca5c067f6a5436265025c82604866b124d2462871d56abd0328d4db"
    license "GPL-3.0"

    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/printer.version=v1.1.7' -s -w")
    end

    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end
