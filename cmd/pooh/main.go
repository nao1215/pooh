package main

import (
	"fmt"
	"os"

	"github.com/nao1215/pooh/version"
	"github.com/spf13/pflag"
)

// main is entry point of pooh.
func main() {
	os.Exit(NewPooh().run())
}

// Pooh is command line arguments.
type Pooh struct {
	// Help is a flag to show help.
	Help bool
	// Version is a flag to show version.
	Version bool
}

// NewPooh returns a new Pooh.
func NewPooh() *Pooh {
	h := pflag.BoolP("help", "h", false, "show help")
	v := pflag.BoolP("version", "v", false, "show version")
	pflag.Parse()

	return &Pooh{
		Help:    *h,
		Version: *v,
	}
}

// run executes pooh.
func (p *Pooh) run() int {
	if p.Help {
		p.usage()
		return 0
	}

	if p.Version {
		p.version()
		return 0
	}

	return 0
}

func (p *Pooh) usage() {
	fmt.Printf("'pooh' is a crawling and scraping application.\n\n")
	pflag.PrintDefaults()
}

func (p *Pooh) version() {
	fmt.Printf("pooh version %s\n", version.GetVersion())
}
