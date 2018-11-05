from html.parser import HTMLParser
import re
class ReutersParser(HTMLParser):
    """Utility class to parse a SGML file and yield documents one at a time."""
    # The tags we actually care about
    RELEVANT_TAGS = { 'TOPICS', 'BODY', 'TITLE' }

    @staticmethod
    def _norm_tag(tag: str):
        return tag.strip().upper()

    def __init__(self):
        HTMLParser.__init__(self)
        self.docs = []
        self.current_doc = None
        self.active = None
        self._init_doc()

    def _init_doc(self):
        self.current_doc = {'TOPICS': '', 'BODY': '', 'TITLE': ''}

    def handle_starttag(self, tag, attrs):
        tag = ReutersParser._norm_tag(tag)
        if tag in ReutersParser.RELEVANT_TAGS:
            self.active = tag

    def handle_endtag(self, tag):
        tag = ReutersParser._norm_tag(tag)
        if tag == 'REUTERS':
            self.docs.append(self.current_doc)
            self._init_doc()
            self.active = None
        elif tag in ReutersParser.RELEVANT_TAGS:
            self.active = None

    def handle_data(self, data):
        if self.active is not None:
            data = re.sub(r'\s+', ' ', data)
            self.current_doc[self.active] += data

    def __iter__(self):
        return iter(self.docs)
