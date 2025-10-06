# FILE: cli/brightline_cli.py
import argparse
from src.core.overlap import check_overlap
from src.core.citation import suggest_citations

def main():
    parser = argparse.ArgumentParser(description="BrightLine CLI Demo")
    parser.add_argument("text", help="Text to check")
    args = parser.parse_args()

    score = check_overlap(args.text)
    suggestions = suggest_citations(args.text)
    print(f"Overlap: {score}")
    for s in suggestions:
        print("-", s)

if __name__ == "__main__":
    main()
