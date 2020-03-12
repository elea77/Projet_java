--
-- Host: localhost:8889
-- Generation Time: Mar 12, 2020 at 12:44 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `blog_java`
--

-- --------------------------------------------------------

--
-- Table structure for table `Article`
--

CREATE TABLE `Article` (
  `id_article` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `auteur` varchar(35) NOT NULL,
  `texte` text NOT NULL,
  `resume` char(255) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Article`
--

INSERT INTO `Article` (`id_article`, `titre`, `auteur`, `texte`, `resume`, `date`, `image`) VALUES
(1, 'Cet article est un test', 'test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tempus orci augue, eu fermentum est blandit at. Sed malesuada, quam at euismod vulputate, massa dolor rutrum leo, eu pellentesque justo mauris a risus. Duis ut massa non diam consectetur sagittis eget vitae orci. Mauris condimentum enim et felis facilisis convallis. Aliquam a gravida justo. Sed hendrerit sit amet elit at maximus. Aliquam laoreet ligula mauris, non dapibus velit gravida vel. Suspendisse potenti. Vivamus vehicula efficitur vulputate. Cras placerat, nunc eget consequat cursus, lorem lorem tristique massa, et sodales neque mauris sagittis eros. Nulla in accumsan nisi. Sed lacus magna, dapibus in ullamcorper sit amet, pulvinar at nibh. Proin porttitor dui sed erat iaculis bibendum. Donec facilisis tincidunt aliquam. Quisque condimentum nisl id velit pretium fermentum.\r\n', 'Sed hendrerit sit amet elit at maximus. Aliquam laoreet ligula mauris, non dapibus velit gravida vel. Suspendisse potenti. Vivamus vehicula efficitur vulputate. Cras placerat, nunc eget consequat cursus, lorem lorem tristique massa, et sodales neque', '2020-01-03', 'https://cdn.pixabay.com/photo/2015/09/02/12/28/pencil-918449_1280.jpg'),
(21, 'Neige', 'Olaf', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra suscipit tellus ac pulvinar. Ut posuere quam eu tincidunt vulputate. Nullam odio nisi, posuere eget pulvinar vel, tristique eu leo. Mauris quis purus vitae quam vestibulum pretium vel vel ipsum. Pellentesque egestas facilisis sapien ac finibus. Ut ac blandit orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra suscipit tellus ac pulvinar. Ut posuere quam eu tincidunt vulputate. Nullam odio nisi, posuere eget pulvinar vel, tristique eu leo. Mauris quis purus vitae quam vestibulum pretium vel vel ipsum. Pellentesque egestas facilisis sapien ac finibus. Ut ac blandit orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra suscipit tellus ac pulvinar. Ut posuere quam eu tincidunt vulputate. Nullam odio nisi, posuere eget pulvinar vel, tristique eu leo. Mauris quis purus vitae quam vestibulum pretium vel vel ipsum. Pellentesque egestas facilisis sapien ac finibus. Ut ac blandit orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra suscipit tellus ac pulvinar. Ut posuere quam eu tincidunt vulputate. Nullam odio nisi, posuere eget pulvinar vel, tristique eu leo. Mauris quis purus vitae quam vestibulum pretium vel vel ipsum. Pellentesque egestas facilisis sapien ac finibus. Ut ac blandit orci.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra suscipit tellus ac pulvinar. Ut posuere quam eu tincidunt vulputate. Nullam odio nisi, posuere eget pulvinar vel, tristique eu leo. Mauris quis purus vitae quam vestibulum.', '2020-01-03', 'https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543_1280.jpg'),
(34, 'Blocage des raffineries', 'Jean-Michelle', 'Depuis le début du mouvement de grève contre le projet de réforme des retraites le 5 décembre, le gouvernement insiste sur l\'absence de risque de pénurie de carburant. \"Il n\'y a pas de risque de pénurie\", a déclaré ce jeudi 26 décembre le ministre de l\'Intérieur Christophe Castaner, en soulignant que sur les 200 dépôts en France, seuls deux \"font l\'objet d\'un blocage\".\r\n\"Il y a 200 dépôts en France, seuls deux sont bloqués au moment où je vous parle, donc il n\'y a aucun risque de pénurie\", a indiqué le ministre de l\'Intérieur lors d\'un déplacement en Seine-et-Marne consacré à la sécurité routière. \r\nPour éviter un risque de comportements \"qui ne seraient pas rationnels\", Christophe Castaner a invité \"chacune et chacun à ne pas se précipiter dans les stations-service\", appelant aussi les médias à \"ne pas alimenter cette petite musique là parce que c\'est une fausse information que d\'évoquer le risque de pénurie\".\r\nEnfin, il a appelé à \"la responsabilité de ceux qui veulent bloquer les raffineries, ceux qui veulent bloquer ces dépôts\", leur demandant de ne pas \"empêcher\" les Français de se déplacer.', 'La grève contre la réforme des retraites se poursuit et la crainte d\'une pénurie de carburant surgit. Lundi 23 décembre au soir, 2,6% des stations-service françaises étaient affectées par le manque \"d\'un ou deux produits\".', '2020-01-03', 'https://img.huffingtonpost.com/asset/5e04d516240000da115a4512.jpeg?ops=scalefit_630_noupscale'),
(36, 'Conséquences du réchauffement climatique', 'GreenPeace', 'La fonte des glaces devrait ouvrir l\'accès à de nouvelles terres arables, de nouvelles ressources minières et énergétiques et de nouvelles voies maritimes. En 2016, la banquise arctique a enregistré des fontes record.\r\nCette fonte des glaces entraînera aussi l\'élévation du niveau des océans, ce qui inondera les zones de très faibles altitudes et modifiera la géographie côtière. Ainsi ces 50 dernières années, le niveau des océans s\'est élevé de quelque 10 centimètres. Et la Nasa estime que dans les 100 à 200 ans, il montera encore d\'au moins un mètre. Le CNRS, de son côté, prévoit qu\'entre 10 et 20.000 îles pourraient être rayées de la carte.\r\nL\'amplification des phénomènes d\'évaporation et de précipitation et le bouleversement des jet-streams, ces énormes courants de haute altitude sont autant de facteurs qui accroissent déjà la fréquence et l\'intensité des sécheresses comme celle qu\'à connue la Californie en 2016 et des inondations.\r\nEnfin, notre planète pourrait voir augmenter, en fréquence et en intensité, les phénomènes météorologiques extrêmes (tempêtes, pluies torrentielles, etc.).', 'Les experts prévoient que le changement climatique en cours résultant des activités humaines aura quelques conséquences que l\'on peut qualifier de positives, comme la découverte de nouvelles ressources énergétiques.', '2020-01-03', 'https://cdn.futura-sciences.com/buildsv6/images/wide1920/f/a/c/facb36e630_106000_consequences-changements-climatiques.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`id_article`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Article`
--
ALTER TABLE `Article`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;