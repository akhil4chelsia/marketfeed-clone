const mockMarketNews = [
  {
    'tagName': 'Top Global News',
    'imageUrl': 'images/corona.jpeg',
    'heading': 'New Covid Stain Shakes Global Markets- Top 10 Global News',
    'comments': '12',
  },
  {
    'tagName': 'Post Market Analysis',
    'imageUrl': 'images/bigman.jpeg',
    'heading':
        'Bears Take Over Dalal Streat, Will the Vaccine Work?- Market Highlights Today',
    'comments': '35',
  },
  {
    'tagName': 'Pre Market Report',
    'imageUrl': 'images/fall.jpeg',
    'heading':
        'New Deadly Covid Stain in UK. Global Markets Down. Beginning of the fall? - Share Market Today',
    'comments': '80',
  },
];

const mockEditorials = [
  {
    'imageUrl': 'images/ipo.jpeg',
    'heading': 'Antony Waste handling IPO: All You Need to Know',
    'comments': '2',
  },
  {
    'imageUrl': 'images/reliance.jpeg',
    'heading': 'Who is Harish Salve, Mukesh Ambani\'s lawyer?',
    'comments': '5',
  },
  {
    'imageUrl': 'images/tap.jpeg',
    'heading': 'What are Water Futures in WallStreet?',
    'comments': '20',
  },
];

const mockJargons = [
  {
    'imageUrl': 'images/bond.jpeg',
    'heading': 'What Are Bonds? Types of Bonds, Risks and Jargons.',
    'comments': '12',
  },
  {
    'imageUrl': 'images/arbitage.jpeg',
    'heading': 'What is Arbitrage Trading? What are Arbitrage Funds?',
    'comments': '52',
  },
  {
    'imageUrl': 'images/buyback.jpeg',
    'heading':
        'What is a Buy Back of Shared? Why does a Company Buy Back its Shares?',
    'comments': '10',
  },
];

const indianMarkets = {
  'NIFTY': {
    'points': '13.466.30',
    'percentageChange': '+1.03%',
    'pointsChange': '+137.90',
  },
  'SENSEX': {
    'points': '46.006.69',
    'percentageChange': '-0.99%',
    'pointsChange': '-452.73',
  }
};

const sectorialIndices = {
  'NIFTY AUTO': {
    'points': '8,935.95',
    'percentageChange': '+1.03%',
    'pointsChange': '+117.90',
  },
  'NIFTY BANK': {
    'points': '29,883.30',
    'percentageChange': '-0.87%',
    'pointsChange': '-272.35',
  },
  'NIFTY FMCG': {
    'points': '8,935.95',
    'percentageChange': '+1.03%',
    'pointsChange': '+117.90',
  },
  'NIFTY IT': {
    'points': '29,883.30',
    'percentageChange': '-0.87%',
    'pointsChange': '-272.35',
  },
  'NIFTY MEDIA': {
    'points': '8,935.95',
    'percentageChange': '+1.03%',
    'pointsChange': '+117.90',
  },
  'NIFTYBANK': {
    'points': '29,883.30',
    'percentageChange': '-0.87%',
    'pointsChange': '-272.35',
  },
  'NIFTY METAL': {
    'points': '8,935.95',
    'percentageChange': '+1.03%',
    'pointsChange': '+117.90',
  },
  'NIFTY PHARMA': {
    'points': '29,883.30',
    'percentageChange': '-0.87%',
    'pointsChange': '-272.35',
  }
};

//Global Indices

const usMarketsData = {
  'DOW JONES': {
    'isOpen': true,
    'points': '30,015.51',
    'percentageChange': '-0.23%',
    'pointsChange': '-200.90',
    'country': 'USA'
  },
  'S&P 500': {
    'isOpen': false,
    'points': '3,687.26',
    'percentageChange': '-0.21%',
    'pointsChange': '-7.66',
    'country': 'USA'
  },
  'NASDAQ': {
    'isOpen': false,
    'points': '12,807.92',
    'percentageChange': '+0.51%',
    'pointsChange': '+65.40',
    'country': 'USA'
  },
};

const europeMarketsData = {
  'DAX': {
    'isOpen': true,
    'points': '23,015.51',
    'percentageChange': '-0.23%',
    'pointsChange': '-200.90',
    'country': 'Germany'
  },
  'FTSE 100': {
    'isOpen': false,
    'points': '31,687.26',
    'percentageChange': '-0.21%',
    'pointsChange': '-7.66',
    'country': 'UK'
  },
  'CAC 40': {
    'isOpen': false,
    'points': '15,807.92',
    'percentageChange': '+0.51%',
    'pointsChange': '+65.40',
    'country': 'France'
  },
};

const asianMarketsData = {
  'SGX NIFTY': {
    'isOpen': true,
    'points': '13,015.51',
    'percentageChange': '-0.23%',
    'pointsChange': '-100.90',
    'country': 'Sigapore'
  },
  'NIKKEI 225': {
    'isOpen': false,
    'points': '26,687.26',
    'percentageChange': '-0.21%',
    'pointsChange': '-88.66',
    'country': 'Japan'
  },
  'SHANGHAI': {
    'isOpen': false,
    'points': '3,807.92',
    'percentageChange': '+0.51%',
    'pointsChange': '+25.40',
    'country': 'China'
  },
  'HANG SENG': {
    'isOpen': false,
    'points': '26,807.92',
    'percentageChange': '+0.51%',
    'pointsChange': '+225.40',
    'country': 'Hong Kong'
  },
};

List<List<String>> getLeaderBoardData() {
  List<List<String>> data = [];
  data.add(['WIPRO', '354.65', '+7.54']);
  data.add(['CIPLA', '654.58', '+6.36']);
  data.add(['TATASTEEL', '754.65', '+3.54']);
  data.add(['INFY', '1654.58', '+2.36']);
  return data;
}

List<List<String>> leaderBoardData = getLeaderBoardData();
